.class public abstract Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .locals 8

    .line 1
    const-wide/32 v0, 0x400000

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const-wide/16 v5, 0x2000

    .line 17
    .line 18
    and-long/2addr v5, p1

    .line 19
    cmp-long v5, v5, v2

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    move v5, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v5, v1

    .line 26
    :goto_1
    const-wide v6, 0x100000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr p1, v6

    .line 32
    cmp-long p1, p1, v2

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    move p1, v4

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move p1, v1

    .line 39
    :goto_2
    if-nez v5, :cond_4

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move p1, v1

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    :goto_3
    move p1, v4

    .line 47
    :goto_4
    if-eqz v0, :cond_5

    .line 48
    .line 49
    return v4

    .line 50
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_7

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_6

    .line 61
    .line 62
    return v4

    .line 63
    :cond_6
    return p1

    .line 64
    :cond_7
    if-eqz p1, :cond_8

    .line 65
    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_8

    .line 71
    .line 72
    move v1, v4

    .line 73
    :cond_8
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZLjava/lang/String;J)Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x200

    .line 2
    .line 3
    and-long/2addr v0, p4

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const-wide v4, 0x200000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v4, p4

    .line 18
    cmp-long v0, v4, v2

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v4

    .line 30
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_7

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    if-eq v0, v5, :cond_6

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    if-eq v0, v5, :cond_6

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    if-eq v0, v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-wide/32 v5, 0x20000000

    .line 47
    .line 48
    .line 49
    and-long/2addr v5, p4

    .line 50
    cmp-long v0, v5, v2

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    const-string v0, "auto_disabler"

    .line 61
    .line 62
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    if-eqz p3, :cond_5

    .line 73
    .line 74
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    move p2, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    move p2, v4

    .line 109
    :cond_4
    :goto_0
    return p2

    .line 110
    :cond_5
    const-wide/32 v5, 0x8000

    .line 111
    .line 112
    .line 113
    and-long/2addr p4, v5

    .line 114
    cmp-long p4, p4, v2

    .line 115
    .line 116
    if-nez p4, :cond_7

    .line 117
    .line 118
    :cond_6
    return v4

    .line 119
    :cond_7
    if-nez p1, :cond_8

    .line 120
    .line 121
    return v4

    .line 122
    :cond_8
    :goto_1
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    return v1

    .line 129
    :cond_9
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_a

    .line 134
    .line 135
    return v4

    .line 136
    :cond_a
    return p2
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZZZLjava/lang/String;J)Z
    .locals 12

    .line 1
    move-wide/from16 v6, p6

    .line 2
    .line 3
    const-wide/32 v0, 0x402000

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v6

    .line 7
    const-wide/16 v8, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v8

    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    const/4 v11, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move v1, v10

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    move v1, v11

    .line 20
    :goto_0
    invoke-static {p0, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :cond_1
    return v11

    .line 31
    :cond_2
    move-object v0, p0

    .line 32
    move v1, p2

    .line 33
    move v2, p3

    .line 34
    move-object/from16 v3, p5

    .line 35
    .line 36
    move-wide/from16 v4, p6

    .line 37
    .line 38
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZLjava/lang/String;J)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    return v11

    .line 45
    :cond_3
    const-wide/32 v0, 0x100000

    .line 46
    .line 47
    .line 48
    and-long/2addr v0, v6

    .line 49
    cmp-long v0, v0, v8

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    return v11

    .line 56
    :cond_4
    const-wide/32 v0, 0x40000

    .line 57
    .line 58
    .line 59
    and-long/2addr v0, v6

    .line 60
    cmp-long v0, v0, v8

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    if-nez p4, :cond_5

    .line 65
    .line 66
    move v0, v10

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    move v0, v11

    .line 69
    :goto_1
    const-wide/32 v1, 0x80000

    .line 70
    .line 71
    .line 72
    and-long/2addr v1, v6

    .line 73
    cmp-long v1, v1, v8

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    if-eqz p4, :cond_6

    .line 78
    .line 79
    move v1, v10

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    move v1, v11

    .line 82
    :goto_2
    if-nez v0, :cond_8

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    move v10, v11

    .line 88
    :cond_8
    :goto_3
    return v10
.end method
