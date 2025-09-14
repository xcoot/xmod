.class Lorg/apache/commons/compress/archivers/sevenz/Coders$1;
.super Ljava/util/HashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x171aa946550cb623L


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>([Ljava/lang/Class;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 19
    .line 20
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    new-array v4, v3, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v5, Lorg/tukaani/xz/LZMA2Options;

    .line 26
    .line 27
    aput-object v5, v4, v2

    .line 28
    .line 29
    const-class v5, Ljava/lang/Number;

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    aput-object v5, v4, v6

    .line 33
    .line 34
    invoke-direct {v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 41
    .line 42
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;

    .line 43
    .line 44
    new-array v3, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    const-class v4, Lorg/tukaani/xz/LZMA2Options;

    .line 47
    .line 48
    aput-object v4, v3, v2

    .line 49
    .line 50
    const-class v4, Ljava/lang/Number;

    .line 51
    .line 52
    aput-object v4, v3, v6

    .line 53
    .line 54
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 61
    .line 62
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 63
    .line 64
    new-array v3, v6, [Ljava/lang/Class;

    .line 65
    .line 66
    const-class v4, Ljava/lang/Number;

    .line 67
    .line 68
    aput-object v4, v3, v2

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>([Ljava/lang/Class;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 78
    .line 79
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 80
    .line 81
    new-array v3, v6, [Ljava/lang/Class;

    .line 82
    .line 83
    const-class v4, Ljava/lang/Number;

    .line 84
    .line 85
    aput-object v4, v3, v2

    .line 86
    .line 87
    const/4 v4, 0x3

    .line 88
    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>([Ljava/lang/Class;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 95
    .line 96
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 97
    .line 98
    new-array v3, v6, [Ljava/lang/Class;

    .line 99
    .line 100
    const-class v4, Ljava/lang/Number;

    .line 101
    .line 102
    aput-object v4, v3, v2

    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>([Ljava/lang/Class;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 112
    .line 113
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    .line 114
    .line 115
    new-array v3, v2, [Ljava/lang/Class;

    .line 116
    .line 117
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 124
    .line 125
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 126
    .line 127
    new-instance v3, Lorg/tukaani/xz/X86Options;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 139
    .line 140
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 141
    .line 142
    new-instance v3, Lorg/tukaani/xz/PowerPCOptions;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 154
    .line 155
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 156
    .line 157
    new-instance v3, Lorg/tukaani/xz/IA64Options;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 169
    .line 170
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 171
    .line 172
    new-instance v3, Lorg/tukaani/xz/ARMOptions;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 184
    .line 185
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 186
    .line 187
    new-instance v3, Lorg/tukaani/xz/ARMThumbOptions;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 199
    .line 200
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 201
    .line 202
    new-instance v3, Lorg/tukaani/xz/SPARCOptions;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;-><init>(Lorg/tukaani/xz/BCJOptions;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 214
    .line 215
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;

    .line 216
    .line 217
    new-array v3, v6, [Ljava/lang/Class;

    .line 218
    .line 219
    const-class v4, Ljava/lang/Number;

    .line 220
    .line 221
    aput-object v4, v3, v2

    .line 222
    .line 223
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    return-void
.end method
