.class public final Lcom/android/server/firewall/StringFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/firewall/StringFilter$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    move-object v3, v0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-ge v2, v4, :cond_e

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/16 v6, 0x63

    .line 22
    .line 23
    if-eq v5, v6, :cond_a

    .line 24
    .line 25
    const/16 v6, 0x65

    .line 26
    .line 27
    if-eq v5, v6, :cond_8

    .line 28
    .line 29
    const/16 v6, 0x69

    .line 30
    .line 31
    if-eq v5, v6, :cond_6

    .line 32
    .line 33
    const/16 v6, 0x70

    .line 34
    .line 35
    if-eq v5, v6, :cond_4

    .line 36
    .line 37
    const/16 v6, 0x72

    .line 38
    .line 39
    if-eq v5, v6, :cond_2

    .line 40
    .line 41
    const/16 v6, 0x73

    .line 42
    .line 43
    if-eq v5, v6, :cond_0

    .line 44
    .line 45
    :goto_1
    move-object v4, v0

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    const-string/jumbo v5, "startsWith"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v4, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    .line 59
    .line 60
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string/jumbo v5, "regex"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    new-instance v4, Lcom/android/server/firewall/StringFilter$RegexFilter;

    .line 79
    .line 80
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-string/jumbo v5, "pattern"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    new-instance v4, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    .line 99
    .line 100
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const-string/jumbo v5, "isNull"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_7

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    new-instance v4, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    .line 119
    .line 120
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    const-string/jumbo v5, "equals"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_9

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_9
    new-instance v4, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    .line 139
    .line 140
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    const-string/jumbo v5, "contains"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_b

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_b
    new-instance v4, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    .line 159
    .line 160
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {v4, p0, v5}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    if-eqz v4, :cond_d

    .line 168
    .line 169
    if-nez v3, :cond_c

    .line 170
    .line 171
    move-object v3, v4

    .line 172
    goto :goto_3

    .line 173
    :cond_c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 174
    .line 175
    const-string p1, "Multiple string filter attributes found"

    .line 176
    .line 177
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_e
    if-nez v3, :cond_f

    .line 186
    .line 187
    new-instance v3, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    .line 188
    .line 189
    invoke-direct {v3, p0}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    .line 190
    .line 191
    .line 192
    :cond_f
    return-object v3
.end method
