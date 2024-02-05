NAME		= test

INVENTORY	= tests/inventory
PLAYBOOK	= tests/test.yml

all:					$(NAME)

$(NAME):
			ansible -m ping --inventory $(INVENTORY) localhost
			@echo "\n\nTest1:\n\tRun command on host with include in node selector\n"
			ansible-playbook --inventory $(INVENTORY) --extra-var host=localhost \
				$(PLAYBOOK)
			@echo "\n\nTest2:\n\tRun command on host for selected nodes\n"
			ansible-playbook --inventory $(INVENTORY) --extra-var host=localhost \
				--extra-var '{"nodes_selector": [VM42, VM84]}' $(PLAYBOOK)
			@echo "\n\nTest3:\n\tCleaning up files\n"
			ansible-playbook --inventory $(INVENTORY) --extra-var host=localhost \
				--extra-var clicmd=clean $(PLAYBOOK)

clean:

fclean:

re:			fclean $(NAME)

.PHONY:		all $(NAME) clean fclean re 