FROM golang:1.21-alpine

RUN apk update && apk add --no-cache bash build-base curl git github-cli make minify nodejs npm openssl protoc python3 upx vim zsh

RUN ln -sf /bin/bash /bin/sh
RUN adduser --disabled-password -s /bin/zsh -h /home/user user

ADD .vimrc /home/user/.vimrc
ADD coc-settings.json /home/user/.vim/

RUN chown user:user -R /home/user/.vi*

USER user
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/romkatv/powerlevel10k.git /home/user/.oh-my-zsh/themes/powerlevel10k
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /home/user/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/user/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

COPY .zshrc /home/user/.zshrc

WORKDIR /go/src/

CMD [ "/bin/zsh" ]
