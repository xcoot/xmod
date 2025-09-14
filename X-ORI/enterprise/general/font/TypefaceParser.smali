.class public final Lcom/android/server/enterprise/general/font/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public in_droidname:Z

.field public in_filename:Z

.field public in_monospace:Z

.field public in_sans:Z

.field public in_serif:Z

.field public mFont:Lcom/android/server/enterprise/general/font/Typeface;

.field public mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;


# virtual methods
.method public final characters([CII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final endDocument()V
    .locals 0

    .line 1
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "font"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    const-string/jumbo p1, "sans"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo p1, "serif"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo p1, "monospace"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo p1, "file"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 59
    .line 60
    if-eqz p1, :cond_8

    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 69
    .line 70
    check-cast p0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    .line 77
    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSerifFonts:Ljava/util/List;

    .line 83
    .line 84
    check-cast p0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    .line 91
    .line 92
    if-eqz p2, :cond_8

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mMonospaceFonts:Ljava/util/List;

    .line 97
    .line 98
    check-cast p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const-string/jumbo p1, "filename"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    const-string/jumbo p1, "droidname"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    .line 126
    .line 127
    :cond_8
    :goto_0
    return-void
.end method

.method public final startDocument()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/general/font/Typeface;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/enterprise/general/font/Typeface;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 7
    .line 8
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "font"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string/jumbo p1, "displayname"

    .line 11
    .line 12
    .line 13
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p1, "sans"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p3, 0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string/jumbo p1, "serif"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string/jumbo p1, "monospace"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo p1, "file"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    new-instance p1, Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    iput-object p2, p1, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    .line 75
    .line 76
    iput-object p2, p1, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const-string/jumbo p1, "filename"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const-string/jumbo p1, "droidname"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    .line 103
    .line 104
    :cond_6
    :goto_0
    return-void
.end method
