package Pod::Weaver::PluginBundle::Author::PERLANCAR::NoRinciAllowDupeSections;

use 5.010001;
use strict;
use warnings;

use Pod::Weaver::Config::Assembler;

# AUTHORITY
# DATE
# DIST
# VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

# keep sync with Pod::Weaver::PluginBundle::Author::PERLANCAR
sub mvp_bundle_config {
    return (
        [ '@Author::PERLANCAR/CorePrep', _exp('@CorePrep'), {} ],
        [ '@Author::PERLANCAR/Name', _exp('Name'), {} ],
        [ '@Author::PERLANCAR/Version', _exp('Version'), {format=>'This document describes version %v of %m (from Perl distribution %r), released on %{YYYY-MM-dd}d.'} ],
        [ '@Author::PERLANCAR/prelude', _exp('Region'), { region_name => 'prelude' } ],

        [ 'SYNOPSIS', _exp('Generic'), {} ],
        [ 'DESCRIPTION', _exp('Generic'), {} ],
        [ 'OVERVIEW', _exp('Generic'), {} ],

        [ 'ATTRIBUTES', _exp('Collect'), { command => 'attr' } ],
        [ 'METHODS', _exp('Collect'), { command => 'method' } ],
        [ 'FUNCTIONS', _exp('Collect'), { command => 'func' } ],
        #[ 'TYPES', _exp('Collect'), { command => ' } ],

        [ '@Author::PERLANCAR/Leftovers', _exp('Leftovers'), {} ],
        [ '@Author::PERLANCAR/postlude',  _exp('Region'), { region_name => 'postlude' } ],

        [ '@Author::PERLANCAR/Completion::GetoptLongComplete', _exp('Completion::GetoptLongComplete'), {} ],
        [ '@Author::PERLANCAR/Completion::GetoptLongSubcommand', _exp('Completion::GetoptLongSubcommand'), {} ],
        [ '@Author::PERLANCAR/Completion::GetoptLongMore', _exp('Completion::GetoptLongMore'), {} ],

        [ '@Author::PERLANCAR/Homepage::DefaultCPAN', _exp('Homepage::DefaultCPAN'), {} ],
        [ '@Author::PERLANCAR/Source::DefaultGitHub', _exp('Source::DefaultGitHub'), {} ],
        [ '@Author::PERLANCAR/Bugs::DefaultRT', _exp('Bugs::DefaultRT'), {} ],
        [ '@Author::PERLANCAR/Authors', _exp('Authors'), {} ],
        [ '@Author::PERLANCAR/Contributors', _exp('Contributors'), {} ],
        [ '@Author::PERLANCAR/PERLANCAR/Contributing', _exp('PERLANCAR::Contributing'), {} ],
        [ '@Author::PERLANCAR/Legal', _exp('Legal'), {} ],

        #REMOVE#[ '@Author::PERLANCAR/Rinci', _exp('-Rinci'), {} ],

        [ '@Author::PERLANCAR/AppendPrepend', _exp('-AppendPrepend'), {} ],

        #REMOVE#[ '@Author::PERLANCAR/EnsureUniqueSections', _exp('-EnsureUniqueSections'), {} ],
        #[ '@Author::PERLANCAR/List', _exp('-Transformer'), { transformer => 'List' } ],
        [ '@Author::PERLANCAR/SingleEncoding', _exp('-SingleEncoding'), {} ],
        [ '@Author::PERLANCAR/PERLANCAR::SortSections', _exp('-PERLANCAR::SortSections'), {} ],

    );
}

1;
# ABSTRACT: PERLANCAR's default Pod::Weaver config (but without the Rinci weaver plugin)

=for Pod::Coverage .*

=head1 SYNOPSIS

In F<weaver.ini>:

 [@Author::PERLANCAR::NoRinci]

or in F<dist.ini>:

 [PodWeaver]
 config_plugin = @Author::PERLANCAR::NoRinci


=head1 DESCRIPTION

Equivalent to (see source code).


=head1 SEE ALSO

L<Pod::Weaver::PluginBundle::Author::PERLANCAR>

L<Pod::Weaver>
