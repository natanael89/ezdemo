
<div class="attribute-header">
    <h1 class="long">{'eZ Publish information: %version'|i18n('design/ezdemodesign/ezinfo/about',,hash( '%version', $ezinfo ) )|wash}</h1>
</div>

<div class="attribute-header">
    <h2>eZ Publish</h2>
</div>

<div class="attribute-header">
    <h3>{'What is eZ Publish?'|i18n( 'design/ezdemodesign/ezinfo/about' )}</h3>
</div>

{if is_set( $what_is_ez_publish )}
   <p>{$what_is_ez_publish}</p>
{/if}

<div class="attribute-header">
    <h3>{'Licence'|i18n( 'design/ezdemodesign/ezinfo/about' )}</h3>
</div>

{if is_set( $license )}
   <p>{$license}</p>
{/if}

{if and( is_set( $contributors ), is_array( $contributors ), count( $contributors )|ge( 1 ) )}
    <div class="attribute-header">
        <h3>{'Contributors'|i18n( 'design/ezdemodesign/ezinfo/about' )}</h3>
    </div>

    <p>
        The following is a list of <a href="http://ez.no/ezpublish">eZ Publish</a> contributors who have licensed their work for use by <a href="http://ez.no/">eZ Systems AS</a> under the terms and conditions of
        the eZ Contributor Licensing Agreement. As permitted by this agreement with the contributors, <a href="http://ez.no/">eZ Systems AS</a> is redistributing the
        contribution under the same license as the file that the contribution is included in. The list of contributors includes the contributors&apos;s
        name, optional contact info and a list of files that they have either contributed or contributed work to.
    </p>

    <ul>
        {foreach $contributors as $contributor}
             <li>{$contributor['name']|wash} : {$contributor['files']|wash}</li>
        {/foreach}
    </ul>
{/if}

<div class="attribute-header">
    <h3>{'Copyright Notice'|i18n( 'design/ezdemodesign/ezinfo/about' )}</h3>
</div>

<p>
    Copyright &copy; 1999-2011 <a href="http://ez.no/">eZ Systems AS</a>, with portions copyright by other parties. A complete list of all contributors and third-party
    software follows.
</p>

{if and( is_set( $third_party_software ), is_array( $third_party_software ), count( $third_party_software )|ge( 1 ) )}
    <div class="attribute-header">
        <h2>{'Third-Party Software'|i18n('design/ezdemodesign/ezinfo/about')}</h2>
    </div>

    <p>
        The following is a list of the third-party software that is distributed with this copy of <a href="http://ez.no/ezpublish">eZ Publish</a>. The list of third party
        software includes the license for the software in question and the directory or files that contain the third-party software.
    </p>

    <ul>
        {foreach $third_party_software as $software_key => $software}
            <li>{$software|wash}</li>
        {/foreach}
    </ul>
{/if}

<div class="attribute-header">
    <h2>{'Extensions'|i18n('design/ezdemodesign/ezinfo/about')}</h2>
</div>

<p>The following is a list of the extensions that have been loaded at run-time by this copy of <a href="http://ez.no/ezpublish">eZ Publish</a>.</p>
{if is_set( $extensions )}
    {foreach $extensions as $ext_name => $extension}
        {if is_array( $extension )}
            <ul>
                <li>
                    {foreach $extension as $ext_key => $ext_info}
                        {$ext_key|wash}:
                        {if not( is_array( $ext_info ) )}
                            {$ext_info}<br />
                        {else}
                            <ul>
                                <li>
                                    {foreach $ext_info as $ext_info_key => $ext_info_value}
                                        {$ext_info_key} : {$ext_info_value}<br />
                                    {/foreach}
                                </li>
                            </ul>
                        {/if}
                    {/foreach}
                </li>
            </ul>
        {/if}
    {/foreach}
{/if}

