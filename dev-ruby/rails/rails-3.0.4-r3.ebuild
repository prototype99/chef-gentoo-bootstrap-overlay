# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/rails/rails-3.0.7.ebuild,v 1.1 2011/04/26 18:06:26 graaff Exp $

EAPI=4
USE_RUBY="ruby18 ree18"
RAILS_PV="3.0.4"
RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="ruby on rails is a web-application and persistance framework"
HOMEPAGE="http://www.rubyonrails.org"

LICENSE="MIT"
SLOT="3.0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"

IUSE=""

RDEPEND=">=app-admin/eselect-rails-0.16"

ruby_add_rdepend "
	~dev-ruby/actionmailer-${RAILS_PV}-r1
	=dev-ruby/actionpack-${RAILS_PV}-r2
	=dev-ruby/activerecord-${RAILS_PV}-r2
	~dev-ruby/activeresource-${RAILS_PV}-r2
	~dev-ruby/activesupport-${RAILS_PV}-r2
	=dev-ruby/bundler-1.0*
	~dev-ruby/railties-${RAILS_PV}-r1"

all_ruby_install() {
	all_fakegem_install

	ruby_fakegem_binwrapper rails rails-${PV}
}

pkg_postinst() {
	elog "To select between slots of rails, use:"
	elog "\teselect rails"

	eselect rails update
}

pkg_postrm() {
	eselect rails update
}