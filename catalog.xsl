<!--<?xml version="1.0" encoding="utf-8"?>-->
<xsl:stylesheet version="2.0" xmlns:marc="http://www.loc.gov/MARC21/slim" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

	<xsl:template match="/">
		<html>
			<xsl:apply-templates select="marc:collection/marc:record">
				<xsl:sort select="substring(marc:collection/marc:record/marc:datafield[@tag='245']/marc:subfield[@code='a'],marc:collection/marc:record/marc:datafield[@tag='245']/@ind2 + 1)" order="ascending"/>
			</xsl:apply-templates>
		</html>
	</xsl:template>

	<xsl:template match="marc:collection/marc:record">
		<h2>Description</h2>
			<xsl:apply-templates select="marc:datafield[@tag=245]"/> <!-- Title -->
			<xsl:apply-templates select="marc:datafield[@tag=250]"/> <!-- Edition -->
			<xsl:apply-templates select="marc:datafield[@tag=260]"/> <!-- Imprint -->
			<xsl:apply-templates select="marc:datafield[@tag=300]"/> <!-- Physical desc -->
		<h2>Notes</h2>
			<xsl:apply-templates select="marc:datafield[@tag=500]"/>
			<xsl:apply-templates select="marc:datafield[@tag=501]"/>
			<xsl:apply-templates select="marc:datafield[@tag=502]"/>
			<xsl:apply-templates select="marc:datafield[@tag=504]"/>
			<xsl:apply-templates select="marc:datafield[@tag=505]"/>
			<xsl:apply-templates select="marc:datafield[@tag=506]"/>
			<xsl:apply-templates select="marc:datafield[@tag=507]"/>
			<xsl:apply-templates select="marc:datafield[@tag=508]"/>
			<xsl:apply-templates select="marc:datafield[@tag=510]"/>
			<xsl:apply-templates select="marc:datafield[@tag=511]"/>
			<xsl:apply-templates select="marc:datafield[@tag=513]"/>
			<xsl:apply-templates select="marc:datafield[@tag=514]"/>
			<xsl:apply-templates select="marc:datafield[@tag=515]"/>
			<xsl:apply-templates select="marc:datafield[@tag=516]"/>
			<xsl:apply-templates select="marc:datafield[@tag=518]"/>
			<xsl:apply-templates select="marc:datafield[@tag=520]"/>
			<xsl:apply-templates select="marc:datafield[@tag=521]"/>
			<xsl:apply-templates select="marc:datafield[@tag=522]"/>
			<xsl:apply-templates select="marc:datafield[@tag=524]"/>
			<xsl:apply-templates select="marc:datafield[@tag=525]"/>
			<xsl:apply-templates select="marc:datafield[@tag=526]"/>
			<xsl:apply-templates select="marc:datafield[@tag=530]"/>
			<xsl:apply-templates select="marc:datafield[@tag=533]"/>
			<xsl:apply-templates select="marc:datafield[@tag=534]"/>
			<xsl:apply-templates select="marc:datafield[@tag=535]"/>
			<xsl:apply-templates select="marc:datafield[@tag=536]"/>
			<xsl:apply-templates select="marc:datafield[@tag=538]"/>
			<xsl:apply-templates select="marc:datafield[@tag=540]"/>
			<xsl:apply-templates select="marc:datafield[@tag=541]"/>
			<xsl:apply-templates select="marc:datafield[@tag=542]"/>
			<xsl:apply-templates select="marc:datafield[@tag=544]"/>
			<xsl:apply-templates select="marc:datafield[@tag=545]"/>
			<xsl:apply-templates select="marc:datafield[@tag=546]"/>
			<xsl:apply-templates select="marc:datafield[@tag=547]"/>
			<xsl:apply-templates select="marc:datafield[@tag=550]"/>
			<xsl:apply-templates select="marc:datafield[@tag=552]"/>
			<xsl:apply-templates select="marc:datafield[@tag=555]"/>
			<xsl:apply-templates select="marc:datafield[@tag=556]"/>
			<xsl:apply-templates select="marc:datafield[@tag=561]"/>
			<xsl:apply-templates select="marc:datafield[@tag=562]"/>
			<xsl:apply-templates select="marc:datafield[@tag=563]"/>
			<xsl:apply-templates select="marc:datafield[@tag=565]"/>
			<xsl:apply-templates select="marc:datafield[@tag=567]"/>
			<xsl:apply-templates select="marc:datafield[@tag=580]"/>
			<xsl:apply-templates select="marc:datafield[@tag=581]"/>
			<xsl:apply-templates select="marc:datafield[@tag=583]"/>
			<xsl:apply-templates select="marc:datafield[@tag=584]"/>
			<xsl:apply-templates select="marc:datafield[@tag=585]"/>
			<xsl:apply-templates select="marc:datafield[@tag=586]"/>
		<h2>Index entries</h2>
			<h3>Personal names</h3>
				<xsl:apply-templates select="marc:datafield[@tag=100]"/> <!-- Personal name -->
				<xsl:apply-templates select="marc:datafield[@tag=600]"/> <!-- Personal name -->
				<xsl:apply-templates select="marc:datafield[@tag=700]"/> <!-- Personal name -->
			<h3>Corporate names</h3>
				<xsl:apply-templates select="marc:datafield[@tag=110]"/> <!-- Corporate name -->
				<xsl:apply-templates select="marc:datafield[@tag=610]"/> <!-- Corporate name -->
				<xsl:apply-templates select="marc:datafield[@tag=710]"/> <!-- Corporate name -->
			<h3>Subjects</h3>
				<xsl:apply-templates select="marc:datafield[@tag=650]"/> <!-- Subject -->
	</xsl:template>

	<xsl:template match="marc:datafield[@tag=245]">
		<p>TITLE STATEMENT
		</p>
			<!-- <xsl:for-each select="marc:subfield[@code='6']">
				<li>Linkage:
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<li>Field link and sequence number:
				<xsl:value-of select="text()"/>
			</xsl:for-each>-->
			<xsl:for-each select="marc:subfield[@code='a']">
				<!--Title:-->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!--Remainder of title:-->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Remainder of title page transcription/statement of responsibility -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Designation of section -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Name of part/section (SE) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Inclusive dates -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Bulk dates -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=250]">
		<p>EDITION STATEMENT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Edition statement -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Remainder of edition statement -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=020]">
		<p>INTERNATIONAL STANDARD BOOK NUMBER
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Binding information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Terms of availability -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Cancelled/invalid ISBN -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=027]">
		<p>STANDARD TECHNICAL REPORT NUMBER
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Cancelled/invalid STRN -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=041]">
		<p>LANGUAGE CODE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Language code of text/sound track or separate title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Language code of summary or abstract/overprinted title or subtitle -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Language code of sung or spoken text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Language code of librettos -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Language code of table of contents -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Language code of accompanying material other than librettos -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Language code of original and/or intermediate translations of text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=043]">
		<p>GEOGRAPHIC AREA CODE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Geographic area code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Local GAC code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of local code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=044]">
		<p>COUNTRY OF PUBLISHING/PRODUCING ENTITY CODE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Country of publishing/producing entity code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Local subentity code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- ISO subentity code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of local subentity data -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=074]">
		<p>GPO ITEM NUMBER
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- GPO item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Cancelled/invalid GPO item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=088]">
		<p>REPORT NUMBER
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Cancelled/invalid report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=100]">
		<p>MAIN ENTRY--PERSONAL NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Attribution qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Fuller form of name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=110]">
		<p>MAIN ENTRY--CORPORATE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting or treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=111]">
		<p>MAIN ENTRY--MEETING NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Meeting name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number (BK CF MP MU SE VM MX) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Name of meeting following jurisdiction name entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=130]">
		<p>MAIN ENTRY--UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=210]">
		<p>ABBREVIATED TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Abbreviated title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=211]">
		<p>ACRONYM OR SHORTENED TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Acronym or shortened title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=212]">
		<p>VARIANT ACCESS TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Variant access title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=214]">
		<p>AUGMENTED TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Augmented title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=222]">
		<p>KEY TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Key title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=240]">
		<p>UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=241]">
		<p>ROMANIZED TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Romanized title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=242]">
		<p>TRANSLATION OF TITLE BY CATALOGING AGENCY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Remainder of title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Remainder of title page transcription /statement of responsibility -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Designation of section -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Name of part/section (BK AM MP MU VM SE) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Language code of translated title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=243]">
		<p>COLLECTIVE UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=246]">
		<p>VARYING FORM OF TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Title proper/short title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Remainder of title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Designation of section -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Name of part/section (SE) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Designation of volume and issue number and/or date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=247]">
		<p>FORMER TITLE OR TITLE VARIATIONS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Title proper/short title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Remainder of title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Designation of section -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Name of part/section (SE) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Designation of volume and issue number and/or date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=260]">
		<p>PUBLICATION, DISTRIBUTION, ETC. (IMPRINT)
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Place of publication, distribution, etc. -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Name of publisher, distributor, etc. -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Date of publication, distribution, etc. -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Place of manufacture -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Manufacturer -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Date of manufacture -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=263]">
		<p>PROJECTED PUBLICATION DATE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Projected publication date -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=265]">
		<p>SOURCE FOR ACQUISITION/SUBSCRIPTION ADDRESS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Source for acquisition/subscription address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=270]">
		<p>ADDRESS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- 270-b = City -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- State or province -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Country -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Postal code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Title preceding attention name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Attention name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Title following attention name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Type of address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Specialized telephone number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Telephone number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fax number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Electronic mail address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- TDD or TTY number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Contact person -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Title of contact person -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Hours -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=300]">
		<p>PHYSICAL DESCRIPTION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Extent -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Other physical details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Dimensions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Accompanying material -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Type of unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Size of unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=302]">
		<p>PAGE OR ITEM COUNT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Page count -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=303]">
		<p>SUBORDINATE ENTITIES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name or description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Schedule -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Contact person -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=304]">
		<p>LINEAR FOOTAGE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Linear footage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=306]">
		<p>PLAYING TIME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Playing time -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=307]">
		<p>HOURS, ETC.
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Hours -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Additional information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=310]">
		<p>CURRENT PUBLICATION FREQUENCY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Current publication frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Date of current publication frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=311]">
		<p>MEETING ROOMS AND FACILITIES AVAILABLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- General description of facilities -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Name and location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Physical description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Capacity -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Equipment available -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Rental fee -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Special restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Accommodations for the disabled -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Contact person -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=312]">
		<p>EQUIPMENT AVAILABLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of equipment -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Brand name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Physical description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Rental fee -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Special restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Accommodations for the disabled -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Contact person -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=315]">
		<p>FREQUENCY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Dates of frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=321]">
		<p>FORMER PUBLICATION FREQUENCY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Former publication frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Dates of former publication frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=340]">
		<p>PHYSICAL MEDIUM
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Material base and configuration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Dimensions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Materials applied to surface -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Information recording technique -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Support -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Production rate/ratio -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Location within medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Technical specifications of medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=342]">
		<p>GEOSPATIAL REFERENCE DATA
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Coordinate or distance units -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Latitude resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Longitude resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Standard parallel or oblique line latitude -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Oblique line longitude -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Longitude of central meridian or projection center -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Latitude of projection origin or projection center -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- False easting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- False northing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Scale factor -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Height of perspective point above surface -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Azimuthal angle -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Azimuth measure point longitude or straight vertical longitude from pole -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Landsat number and path number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Zone identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Ellipsoid name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Semi-major axis -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Denominator of flattening ratio -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Vertical resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Vertical encoding method -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Local planar, local, or other projection or grid description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Local planar or local georeference information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Reference method used -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=343]">
		<p>PLANAR COORDINATE DATA
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Planar coordinate encoding method -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Planar distance units -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Abscissa resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Ordinate resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Distance resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Bearing resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Bearing units -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Bearing reference direction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Bearing reference meridian -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='=']">
				<!-- ICE -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Price -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Form of issue -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=351]">
		<p>ORGANIZATION AND ARRANGEMENT OF MATERIALS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Organization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Arrangement -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Hierarchical level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=352]">
		<p>DIGITAL GRAPHIC REPRESENTATION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Direct reference method -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Object type -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Object count -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Row count -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Column count -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Vertical count -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Indirect reference description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=355]">
		<p>SECURITY CLASSIFICATION CONTROL
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Security classification -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Handling instructions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- External dissemination information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Downgrading or declassification event -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Classification system -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Country of origin code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Downgrading date -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Declassification date -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Authorization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=357]">
		<p>ORIGINATOR DISSEMINATION CONTROL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Originator control term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Originating agency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Authorized recipients of material -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Other restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=359]">
		<p>RENTAL PRICE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Rental price -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=362]">
		<p>DATES OF PUBLICATION AND/OR SEQUENTIAL DESIGNATION
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Dates of publication and/or sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=440]">
		<p>SERIES STATEMENT/ADDED ENTRY--TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=490]">
		<p>SERIES STATEMENT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Series statement -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Library of Congress call number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=500]">
		<p>GENERAL NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- General note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Library of Congress call number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=501]">
		<p>WITH NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- With note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=502]">
		<p>DISSERTATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Dissertation note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=503]">
		<p>BIBLIOGRAPHIC HISTORY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Bibliographic history note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=504]">
		<p>BIBLIOGRAPHY, ETC. NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Bibliography, etc. note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number of references -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=505]">
		<p>FORMATTED CONTENTS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Formatted contents note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Statement of responsibility -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=506]">
		<p>RESTRICTIONS ON ACCESS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Terms governing access -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Jurisdiction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Physical access provisions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Authorized users -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Authorization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=507]">
		<p>SCALE NOTE FOR GRAPHIC MATERIAL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Representative fraction of scale note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Remainder of scale note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=508]">
		<p>CREATION/PRODUCTION CREDITS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Creation/production credits note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=510]">
		<p>CITATION/REFERENCES NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Dates of coverage of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location within source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=511]">
		<p>PARTICIPANT OR PERFORMER NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Participant or performer note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=512]">
		<p>EARLIER OR LATER VOLUMES SEPARATELY CATALOGED NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Earlier or later volumes separately cataloged note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=513]">
		<p>TYPE OF REPORT AND PERIOD COVERED NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Period covered -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=514]">
		<p>DATA QUALITY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Attribute accuracy report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Attribute accuracy value -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Attribute accuracy explanation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Logical consistency report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Completeness report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Horizontal position accuracy report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Horizontal position accuracy value -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Horizontal position accuracy explanation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Vertical positional accuracy report -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Vertical positional accuracy value -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Vertical positional accuracy explanation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Cloud cover -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Display note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=515]">
		<p>NUMBERING PECULIARITIES NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Numbering peculiarities note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=516]">
		<p>TYPE OF COMPUTER FILE OR DATA NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of computer file or data note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=517]">
		<p>CATEGORIES OF FILMS NOTE (ARCHIVAL)
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Different formats -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Content descriptors -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Additional animation techniques -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=518]">
		<p>DATE/TIME AND PLACE OF AN EVENT NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Date/time and place of an event note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=520]">
		<p>SUMMARY, ETC.
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Summary, etc. -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Expansion of summary note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=521]">
		<p>TARGET AUDIENCE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Target audience note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=522]">
		<p>GEOGRAPHIC COVERAGE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Geographic coverage note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=523]">
		<p>TIME PERIOD OF CONTENT NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Time period of content note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Dates of data collection note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=524]">
		<p>PREFERRED CITATION OF DESCRIBED MATERIALS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Preferred citation of described materials note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of schema used -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=525]">
		<p>SUPPLEMENT NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Supplement note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=526]">
		<p>STUDY PROGRAM INFORMATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Program name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Interest level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Reading level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Title point value -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=527]">
		<p>CENSORSHIP NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Censorship note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=530]">
		<p>ADDITIONAL PHYSICAL FORM AVAILABLE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Additional physical form available note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Availability source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Availability conditions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Order number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=531]">
		<p>ELIGIBILITY, FEES, PROCEDURES NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Eligibility -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Fee -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Admission procedures -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Documents required -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Waiting list -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Waiting period -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=533]">
		<p>REPRODUCTION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Place of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Agency responsible for reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Physical description of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Series statement of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Dates of publication and/or sequential designation of issues reproduced -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note about reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Fixed-length data elements of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=534]">
		<p>ORIGINAL VERSION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition statement of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Publication, distribution, etc. of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Physical description, etc. of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Series statement of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Key title of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Location of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note about original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Introductory phrase -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title statement of original -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=535]">
		<p>LOCATION OF ORIGINALS/DUPLICATES NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Custodian -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Postal address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Country -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Telecommunications address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Repository location code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=536]">
		<p>FUNDING INFORMATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Text of note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Contract number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Grant number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Undifferentiated number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Program element number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Project number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Task number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Work unit number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=537]">
		<p>SOURCE OF DATA NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Source of data note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=538]">
		<p>SYSTEM DETAILS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- System details note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=540]">
		<p>TERMS GOVERNING USE AND REPRODUCTION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Terms governing use and reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Jurisdiction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Authorization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Authorized users -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=541]">
		<p>IMMEDIATE SOURCE OF ACQUISITION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Source of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Method of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Accession number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Owner -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Purchase price -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Extent -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Type of unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=543]">
		<p>SOLICITATION INFORMATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Solicitation information note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=544]">
		<p>LOCATION OF OTHER ARCHIVAL MATERIALS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Custodian -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Country -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Provenance -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=545]">
		<p>BIOGRAPHICAL OR HISTORICAL DATA
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Biographical or historical data -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Expansion -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=546]">
		<p>LANGUAGE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Language note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Information code or alphabet -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=547]">
		<p>FORMER TITLE COMPLEXITY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Former title complexity note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=550]">
		<p>ISSUING BODY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Issuing body note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=552]">
		<p>ENTITY AND ATTRIBUTE INFORMATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Entity type label -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Entity type definition and source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Attribute label -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Attribute definition and source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Enumerated domain value -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Enumerated domain value definition and source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Range domain minimum and maximum -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Codeset name and source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Unrepresentable domain -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Attribute units of measurement and resolution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Beginning date and ending date of attribute values -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Attribute value accuracy -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Attribute value accuracy explanation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Attribute measurement frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Entity and attribute overview -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Entity and attribute detail citation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Display note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=555]">
		<p>CUMULATIVE INDEX/FINDING AIDS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Cumulative index/finding aids note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Availability source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Degree of control -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Bibliographic reference -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=556]">
		<p>INFORMATION ABOUT DOCUMENTATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Information about documentation note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=561]">
		<p>OWNERSHIP AND CUSTODIAL HISTORY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- History -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Time of collation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=562]">
		<p>COPY AND VERSION IDENTIFICATION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Identifying markings -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Copy identification -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Version identification -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Presentation format -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Number of copies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=565]">
		<p>CASE FILE CHARACTERISTICS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Number of cases/variables -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Name of variable -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Unit of analysis -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Universe of data -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Filing scheme or code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=567]">
		<p>METHODOLOGY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Methodology note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=570]">
		<p>EDITOR NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Editor note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=571]">
		<p>VOLUNTEERS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Volunteers note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Special requirements -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=572]">
		<p>AFFILIATION AND OTHER RELATIONSHIPS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Affiliation and other relationships note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=573]">
		<p>CREDENTIALS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Credentials note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=574]">
		<p>TRANSPORTATION AND DIRECTIONS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Transportation and directions note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=575]">
		<p>ACCOMMODATIONS FOR THE DISABLED NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Accommodations for the disabled note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=576]">
		<p>SERVICES AVAILABLE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Services available note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=580]">
		<p>LINKING ENTRY COMPLEXITY NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Linking entry complexity note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Source of note information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=581]">
		<p>PUBLICATIONS ABOUT DESCRIBED MATERIALS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Publications about described materials note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=582]">
		<p>RELATED COMPUTER FILES NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Related computer files note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=583]">
		<p>ACTION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Action -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Action identification -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Time of action -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Action interval -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Contingency for action -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Authorization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Jurisdiction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Method of action -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Site of action -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Action agent -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Status -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Extent -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Type of unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=584]">
		<p>ACCUMULATION AND FREQUENCY OF USE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Accumulation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Frequency of use -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=585]">
		<p>EXHIBITIONS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Exhibitions note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=586]">
		<p>AWARDS NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Awards note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=587]">
		<p>OTHER INFORMATION AVAILABLE NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Other information available note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=590]">
		<p>LOCAL NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Local note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Provenance -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Condition of individual reels -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=600]">
		<p>SUBJECT ADDED ENTRY--PERSONAL NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Attribution qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Fuller form of name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=610]">
		<p>SUBJECT ADDED ENTRY--CORPORATE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting or treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=611]">
		<p>SUBJECT ADDED ENTRY--MEETING NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Meeting name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number (BK CF MP MU SE VM MX) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Name of meeting following jurisdiction name entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=630]">
		<p>SUBJECT ADDED ENTRY--UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=650]">
		<p>SUBJECT ADDED ENTRY--TOPICAL TERM
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Topical term or geographic name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Topical term following geographic name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of event -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Active dates -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=651]">
		<p>SUBJECT ADDED ENTRY--GEOGRAPHIC NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Geographic name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Geographic name following place entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=652]">
		<p>SUBJECT ADDED ENTRY--REVERSED GEOGRAPHIC
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Geographic name of place element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=653]">
		<p>INDEX TERM--UNCONTROLLED
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uncontrolled term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=654]">
		<p>SUBJECT ADDED ENTRY--FACETED TOPICAL TERMS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Focus term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Non-focus term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Facet/hierarchy designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of heading or term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Material specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=655]">
		<p>INDEX TERM--GENRE/FORM/PHYSICAL CHARACTERISTICS
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Genre/form/physical characteristics -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Non-focus term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Facet/hierarchy designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=656]">
		<p>INDEX TERM--OCCUPATION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Occupation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=657]">
		<p>INDEX TERM--FUNCTION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Function -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Form subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=658]">
		<p>INDEX TERM--CURRICULUM OBJECTIVE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main curriculum objective -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate curriculum objective -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Curriculum code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Correlation factor -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=700]">
		<p>ADDED ENTRY--PERSONAL NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Attribution qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Fuller form of name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=705]">
		<p>ADDED ENTRY--PERSONAL NAME (PERFORMER)
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=710]">
		<p>ADDED ENTRY--CORPORATE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting or treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=711]">
		<p>ADDED ENTRY--MEETING NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Meeting name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number (BK CF MP MU SE VM MX) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Name of meeting following jurisdiction name entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=715]">
		<p>ADDED ENTRY--CORPORATE NAME-PERFORMING GROUP
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Nonprinting information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=720]">
		<p>ADDED ENTRY--UNCONTROLLED NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=730]">
		<p>ADDED ENTRY--UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=740]">
		<p>ADDED ENTRY--UNCONTROLLED RELATED/ANALYTICAL TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uncontrolled related/analytical title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Institution to which field applies -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=752]">
		<p>ADDED ENTRY--HIERARCHICAL PLACE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Country -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- State, province, territory -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- County, region, islands area -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- City -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=753]">
		<p>SYSTEM DETAILS ACCESS TO COMPUTER FILES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Make and model of machine -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Programming language -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Operating system -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=754]">
		<p>ADDED ENTRY--TAXONOMIC IDENTIFICATION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Taxonomic name/taxonomic hierarchical category -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of taxonomic identification -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=755]">
		<p>ADDED ENTRY--PHYSICAL CHARACTERISTICS
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Access term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- General subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Chronological subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Geographic subdivision -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=760]">
		<p>MAIN SERIES ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=762]">
		<p>SUBSERIES ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=765]">
		<p>ORIGINAL LANGUAGE ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=767]">
		<p>TRANSLATION ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=770]">
		<p>SUPPLEMENT/SPECIAL ISSUE ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=772]">
		<p>PARENT RECORD ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=773]">
		<p>HOST ITEM ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Abbreviated title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=774]">
		<p>CONSTITUENT UNIT ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=775]">
		<p>OTHER EDITION ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Language code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Country code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=776]">
		<p>ADDITIONAL PHYSICAL FORM ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=777]">
		<p>ISSUED WITH ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=780]">
		<p>PRECEDING ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=785]">
		<p>SUCCEEDING ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=786]">
		<p>ISSUED WITH ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Period of content -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Abbreviated title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Source contribution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=787]">
		<p>NONSPECIFIC RELATIONSHIP ENTRY
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Main entry heading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Edition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Qualifying information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Place, publisher, and date of publication -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Relationship information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Physical description of source -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Display text -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Series data for related item -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Material-specific details -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Other item identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Parallel title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Report number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Standard Technical Report Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- International Standard Serial Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- CODEN designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- International Standard Book Number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Control subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=800]">
		<p>SERIES ADDED ENTRY--PERSONAL NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Attribution qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Fuller form of name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=810]">
		<p>SERIES ADDED ENTRY--CORPORATE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting or treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=811]">
		<p>SERIES ADDED ENTRY--MEETING NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Meeting name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number (BK CF MP MU SE VM MX) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Name of meeting following jurisdiction name entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=830]">
		<p>SERIES ADDED ENTRY--UNIFORM TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume number/sequential designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=840]">
		<p>SERIES ADDED ENTRY--TITLE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Volume or number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=841]">
		<p>HOLDINGS CODED DATA VALUES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of record -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Fixed-length data elements -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Encoding level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=842]">
		<p>TEXTUAL PHYSICAL FORM DESIGNATOR
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Textual physical form designator -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=843]">
		<p>REPRODUCTION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Type of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Place of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Agency responsible for reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Physical description of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Series statement of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Dates of publication and/or sequential designation of issues reproduced -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Note about reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Fixed-length data elements of reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=844]">
		<p>NAME OF UNIT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name of unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=845]">
		<p>TERMS GOVERNING USE AND REPRODUCTION NOTE
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Terms governing use and reproduction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Jurisdiction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Authorization -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Authorized users -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=850]">
		<p>HOLDING INSTITUTION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Holding institution -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Holdings -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Inclusive dates -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Retention statement -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=851]">
		<p>LOCATION
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Name (custodian or owner) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Institutional division -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Street address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Country -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Location of units -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Repository location code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=852]">
		<p>LOCATION/CALL NUMBER
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Sublocation or collection -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Shelving location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Address -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Coded location qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- = Qualifier type -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- = Number of units 1-9 -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- = Unit type -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Non-coded location qualifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Classification part -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Item part -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Shelving control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Call number prefix -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Shelving form of title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Call number suffix -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Country code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Piece physical condition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Copyright article-fee code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of classification or shelving scheme -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=853]">
		<p>CAPTIONS AND PATTERN--BASIC BIBLIOGRAPHIC UNIT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Bibliographic units per next higher level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Numbering continuity -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Calendar change -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Regularity pattern -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=854]">
		<p>CAPTIONS AND PATTERN--SUPPLEMENTARY MATERIAL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Type of supplementary material -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Bibliographic units per next higher level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Numbering continuity -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Calendar change -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Regularity pattern -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=855]">
		<p>CAPTIONS AND PATTERN--INDEXES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Type of index -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Bibliographic units per next higher level -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Numbering continuity -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Frequency -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Calendar change -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Regularity pattern -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=856]">
		<p>ELECTRONIC LOCATION AND ACCESS
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Field link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Host name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Access number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Compression information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Path -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Electronic name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Uniform resource name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Processor of request -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Instruction -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Bits per second -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Password -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Logon -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Contact for access assistance -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Name of location of host in subfield $a -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Operating system -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Port -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Electronic format type  -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Settings -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- File size -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Terminal emulation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Uniform Resource Identifier -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Hours access method available -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Record control number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Link text  -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Access method -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=863]">
		<p>ENUMERATION AND CHRONOLOGY--BASIC BIBLIOGRAPHIC UNIT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Converted Gregorian year -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Piece physical condition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Copyright article-fee code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Break indicator -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=864]">
		<p>ENUMERATION AND CHRONOLOGY--SUPPLEMENTARY MATERIAL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Converted Gregorian year -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Title of supplementary material -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Piece physical condition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Copyright article-fee code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Break indicator -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=865]">
		<p>ENUMERATION AND CHRONOLOGY--INDEXES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- First level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Third level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Fourth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Fifth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Sixth level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Alternative numbering scheme, first level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Alternative numbering scheme, second level of enumeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- First level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Second level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Third level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Fourth level of chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Alternative numbering scheme, chronology -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Converted Gregorian year -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Title of index -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Piece physical condition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Copyright article-fee code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Break indicator -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=866]">
		<p>TEXTUAL HOLDINGS--BASIC BIBLIOGRAPHIC UNIT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Textual string -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=867]">
		<p>TEXTUAL HOLDINGS--SUPPLEMENTARY MATERIAL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Textual holdings -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=868]">
		<p>TEXTUAL HOLDINGS--INDEXES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Textual holdings -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=870]">
		<p>VARIANT PERSONAL NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Personal name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Numeration -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Titles and other words associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Dates associated with a name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Tag and sequence number of the field for which 870 is a variant(R) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Fuller form of name -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=871]">
		<p>VARIANT CORPORATE NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Corporate name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting or treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Relator term -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Tag and sequence number of the field for which 871 is a variant(R) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=872]">
		<p>VARIANT CONFERENCE OR MEETING NAME
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Meeting name or jurisdiction name as entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Number (BK CF MP MU SE VM MX) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Location of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Subordinate unit -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Tag and sequence number of the field for which 872 is a variant(R) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section/meeting -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Name of meeting following jurisdiction name entry element -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Affiliation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Relator code -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=873]">
		<p>VARIANT UNIFORM TITLE HEADING
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Uniform title -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date of treaty signing -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Date of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Miscellaneous information -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Medium -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Tag and sequence number of the field for which 873 is a variant(R) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Form subheading -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Language of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Medium of performance for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Number of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Arranged statement for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Name of part/section of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Key for music -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Version -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Title of a work -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=876]">
		<p>ITEM INFORMATION--BASIC BIBLIOGRAPHIC UNIT
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Invalid or cancelled internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Cost -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date acquired -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Source of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Use restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Item status -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Temporary location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Invalid or cancelled piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=877]">
		<p>ITEM INFORMATION--SUPPLEMENTARY MATERIAL
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Invalid or cancelled internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Cost -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date acquired -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Source of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Use restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Item status -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Temporary location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Invalid or cancelled piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=878]">
		<p>ITEM INFORMATION--INDEXES
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Invalid or cancelled internal item number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Cost -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Date acquired -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Source of acquisition -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Use restrictions -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Item status -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Temporary location -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Invalid or cancelled piece designation -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Copy number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Nonpublic note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Public note -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Materials specified -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Link and sequence number -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=880]">
		<p>ALTERNATE GRAPHIC REPRESENTATION
		</p>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Linkage -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='0']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='1']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Same as associated field -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Undefined; each contains blank (#) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Undefined; each contains blank (#) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='9']">
				<!-- Undefined; each contains blank (#) -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
	<xsl:template match="marc:datafield[@tag=886]">
		<p>FOREIGN MARC INFORMATION FIELD
		</p>
			<xsl:for-each select="marc:subfield[@code='a']">
				<!-- Tag of the foreign MARC field/Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='b']">
				<!-- Content of the foreign MARC field/Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='2']">
				<!-- Source of data -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='c']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='d']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='e']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='f']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='g']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='h']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='i']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='j']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='k']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='l']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='m']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='n']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='o']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='p']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='q']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='r']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='s']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='t']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='u']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='v']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='w']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='x']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='y']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='z']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='0']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='1']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='3']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='4']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='5']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='6']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='7']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='8']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
			<xsl:for-each select="marc:subfield[@code='9']">
				<!-- Foreign MARC subfield -->
				<xsl:value-of select="text()"/>
			</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c)1998-2002 eXcelon Corp.
<metaInformation>
<scenarios ><scenario default="no" name="Ray Charles" userelativepaths="yes" externalpreview="no" url="..\xml\MARC21slim\raycharles.xml" htmlbaseurl="" processortype="internal" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""/><scenario default="yes" name="s7" userelativepaths="yes" externalpreview="no" url="..\ifla\sally7.xml" htmlbaseurl="" processortype="internal" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""/></scenarios><MapperInfo srcSchemaPath="" srcSchemaRoot="" srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
</metaInformation>
-->
