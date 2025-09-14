.class final enum Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

.field public static final enum P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;


# instance fields
.field private final mRGB2XYZ:[[F

.field private final mXYZ2RGB:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    new-array v3, v1, [F

    .line 10
    .line 11
    fill-array-data v3, :array_1

    .line 12
    .line 13
    .line 14
    new-array v4, v1, [F

    .line 15
    .line 16
    fill-array-data v4, :array_2

    .line 17
    .line 18
    .line 19
    filled-new-array {v2, v3, v4}, [[F

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-array v3, v1, [F

    .line 24
    .line 25
    fill-array-data v3, :array_3

    .line 26
    .line 27
    .line 28
    new-array v4, v1, [F

    .line 29
    .line 30
    fill-array-data v4, :array_4

    .line 31
    .line 32
    .line 33
    new-array v5, v1, [F

    .line 34
    .line 35
    fill-array-data v5, :array_5

    .line 36
    .line 37
    .line 38
    filled-new-array {v3, v4, v5}, [[F

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string/jumbo v4, "sRGB"

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;-><init>(Ljava/lang/String;I[[F[[F)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 50
    .line 51
    new-array v3, v1, [F

    .line 52
    .line 53
    fill-array-data v3, :array_6

    .line 54
    .line 55
    .line 56
    new-array v4, v1, [F

    .line 57
    .line 58
    fill-array-data v4, :array_7

    .line 59
    .line 60
    .line 61
    new-array v5, v1, [F

    .line 62
    .line 63
    fill-array-data v5, :array_8

    .line 64
    .line 65
    .line 66
    filled-new-array {v3, v4, v5}, [[F

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-array v4, v1, [F

    .line 71
    .line 72
    fill-array-data v4, :array_9

    .line 73
    .line 74
    .line 75
    new-array v5, v1, [F

    .line 76
    .line 77
    fill-array-data v5, :array_a

    .line 78
    .line 79
    .line 80
    new-array v1, v1, [F

    .line 81
    .line 82
    fill-array-data v1, :array_b

    .line 83
    .line 84
    .line 85
    filled-new-array {v4, v5, v1}, [[F

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v4, "P3"

    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    invoke-direct {v2, v4, v5, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;-><init>(Ljava/lang/String;I[[F[[F)V

    .line 93
    .line 94
    .line 95
    sput-object v2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 96
    .line 97
    filled-new-array {v0, v2}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 4
        0x404f6c0d
        -0x403b3722
        -0x4100b631
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 4
        -0x4087dfe3    # -0.96924f
        0x3ff01fb0
        0x3d2a3593
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 4
        0x3d63dc48    # 0.05563f
        -0x41af1fde    # -0.20398f
        0x3f874ad3
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_3
    .array-data 4
        0x3ed324ea
        0x3eb71540    # 0.357584f
        0x3e38d003
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_4
    .array-data 4
        0x3e59be0a
        0x3f371551
        0x3d93d966
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_5
    .array-data 4
        0x3c9e5c0c    # 0.019331f
        0x3df41c82    # 0.119195f
        0x3f735611
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_6
    .array-data 4
        0x401f9574
        -0x40919115
        -0x4131cfff    # -0.40271f
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_7
    .array-data 4
        -0x40aba68b    # -0.82949f
        0x3fe19ef9
        0x3cc18937    # 0.023625f
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_8
    .array-data 4
        0x3d12d341
        -0x426400fc    # -0.07617f
        0x3f74f65a
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_9
    .array-data 4
        0x3ef91fd6
        0x3e8805a3
        0x3e4af966
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    :array_a
    .array-data 4
        0x3e6a786c
        0x3f3115cf
        0x3da26139    # 0.079287f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3d38c869
        0x3f859ff5
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[[F[[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mXYZ2RGB:[[F

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mRGB2XYZ:[[F

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final execute([[F)[[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mXYZ2RGB:[[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->mRGB2XYZ:[[F

    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
