.class public abstract Lcom/android/server/permission/access/util/PackageVersionMigration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I
    .locals 8

    .line 1
    const-class v0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->getLegacyPermissionStateVersion(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const-class v0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getLegacyAppOpVersion()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-ne p0, v1, :cond_1

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "getVersion() called when there are no legacy files"

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    const/16 v2, 0xb

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-lt p0, v2, :cond_2

    .line 47
    .line 48
    if-lt v0, v3, :cond_2

    .line 49
    .line 50
    const/16 v2, 0xf

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    const/16 v4, 0xa

    .line 55
    .line 56
    if-lt p0, v4, :cond_3

    .line 57
    .line 58
    if-lt v0, v3, :cond_3

    .line 59
    .line 60
    const/16 v2, 0xe

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_3
    const/4 v5, 0x1

    .line 65
    if-lt p0, v4, :cond_4

    .line 66
    .line 67
    if-lt v0, v5, :cond_4

    .line 68
    .line 69
    const/16 v2, 0xd

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_4
    const/16 v6, 0x9

    .line 74
    .line 75
    if-lt p0, v6, :cond_5

    .line 76
    .line 77
    if-lt v0, v5, :cond_5

    .line 78
    .line 79
    const/16 v2, 0xc

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/16 v7, 0x8

    .line 83
    .line 84
    if-lt p0, v7, :cond_6

    .line 85
    .line 86
    if-lt v0, v5, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const/4 v2, 0x7

    .line 90
    if-lt p0, v2, :cond_7

    .line 91
    .line 92
    if-lt v0, v5, :cond_7

    .line 93
    .line 94
    :goto_1
    move v2, v4

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const/4 v4, 0x6

    .line 97
    if-lt p0, v4, :cond_8

    .line 98
    .line 99
    if-lt v0, v5, :cond_8

    .line 100
    .line 101
    :goto_2
    move v2, v6

    .line 102
    goto :goto_4

    .line 103
    :cond_8
    const/4 v6, 0x5

    .line 104
    if-lt p0, v6, :cond_9

    .line 105
    .line 106
    if-lt v0, v5, :cond_9

    .line 107
    .line 108
    :goto_3
    move v2, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_9
    const/4 v7, 0x4

    .line 111
    if-lt p0, v7, :cond_a

    .line 112
    .line 113
    if-lt v0, v5, :cond_a

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_a
    if-lt p0, v3, :cond_b

    .line 117
    .line 118
    if-lt v0, v5, :cond_b

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_b
    const/4 v2, 0x2

    .line 122
    if-lt p0, v2, :cond_c

    .line 123
    .line 124
    if-lt v0, v5, :cond_c

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_c
    if-lt p0, v5, :cond_d

    .line 128
    .line 129
    if-lt v0, v5, :cond_d

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_d
    if-ltz p0, :cond_e

    .line 133
    .line 134
    if-lt v0, v5, :cond_e

    .line 135
    .line 136
    move v2, v3

    .line 137
    goto :goto_4

    .line 138
    :cond_e
    if-ltz p0, :cond_f

    .line 139
    .line 140
    if-ltz v0, :cond_f

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_f
    if-lt p0, v1, :cond_10

    .line 144
    .line 145
    if-ltz v0, :cond_10

    .line 146
    .line 147
    move v2, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_10
    const/4 v2, 0x0

    .line 150
    :goto_4
    return v2
.end method
