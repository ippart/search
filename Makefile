build:
	@docker build -t ippart/search .

start: clean
	@docker run -d -p 3306:3306 --name ippart_db imega/mysql
	@docker run --rm \
		-v $(CURDIR)/sql:/sql \
		--link ippart_db:ippart_db \
		imega/mysql-client \
		mysql --host=ippart_db -e "source /sql/ippart.sql"
#	@docker run --rm \
#		-v $(CURDIR)/sql:/sql \
#		--link ippart_db:ippart_db \
#		imega/mysql-client \
#		mysql --host=ippart_db -e "source /sql/schema.sql"
	@docker run -d -p 9312:9312 --link ippart_db:ippart_db -p 9306:9306 \
		-v $(CURDIR)/sphinx.conf:/etc/sphinx/sphinx.conf \
		-v $(CURDIR)/data:/data --name search ippart/search

clean:
	@-docker rm -fv search
	@-docker rm -fv ippart_db
