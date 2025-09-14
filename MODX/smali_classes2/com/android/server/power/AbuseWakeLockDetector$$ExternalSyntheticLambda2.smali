.class public final synthetic Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/AbuseWakeLockDetector;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/AbuseWakeLockDetector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/AbuseWakeLockDetector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->uid:I

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    iget-object v4, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 29
    .line 30
    and-int/2addr v4, v2

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move v4, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v3

    .line 36
    :goto_0
    :try_start_1
    sget-object v5, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    .line 37
    .line 38
    move v6, v3

    .line 39
    :goto_1
    const/4 v7, 0x2

    .line 40
    if-ge v6, v7, :cond_2

    .line 41
    .line 42
    aget-object v7, v5, v6

    .line 43
    .line 44
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    move v5, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v5, v3

    .line 56
    :goto_2
    :try_start_2
    iget-object v6, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    const/16 v7, 0x64

    .line 63
    .line 64
    if-le v6, v7, :cond_3

    .line 65
    .line 66
    move v6, v2

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v6, v3

    .line 69
    :goto_3
    :try_start_3
    iget-object v0, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    const-string v7, "android.permission.DEVICE_POWER"

    .line 72
    .line 73
    invoke-virtual {v0, v7, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    move v0, v2

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    move v0, v3

    .line 82
    :goto_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 86
    goto :goto_9

    .line 87
    :catch_0
    move v0, v3

    .line 88
    goto :goto_7

    .line 89
    :catch_1
    move v0, v3

    .line 90
    goto :goto_8

    .line 91
    :catch_2
    move v0, v3

    .line 92
    move v6, v0

    .line 93
    goto :goto_7

    .line 94
    :catch_3
    move v0, v3

    .line 95
    move v6, v0

    .line 96
    goto :goto_8

    .line 97
    :catch_4
    move v0, v3

    .line 98
    move v5, v0

    .line 99
    :goto_5
    move v6, v5

    .line 100
    goto :goto_7

    .line 101
    :catch_5
    move v0, v3

    .line 102
    move v5, v0

    .line 103
    :goto_6
    move v6, v5

    .line 104
    goto :goto_8

    .line 105
    :catch_6
    move v0, v3

    .line 106
    move v4, v0

    .line 107
    move v5, v4

    .line 108
    goto :goto_5

    .line 109
    :catch_7
    move v0, v3

    .line 110
    move v4, v0

    .line 111
    move v5, v4

    .line 112
    goto :goto_6

    .line 113
    :catch_8
    :goto_7
    move p0, v2

    .line 114
    goto :goto_9

    .line 115
    :catch_9
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v7, "Process abuse wakelock; Failed to find "

    .line 118
    .line 119
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string p1, "AbuseWakeLockDetector"

    .line 130
    .line 131
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_7

    .line 135
    :goto_9
    if-eqz v6, :cond_5

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    if-nez v4, :cond_5

    .line 140
    .line 141
    if-nez v5, :cond_5

    .line 142
    .line 143
    if-nez p0, :cond_5

    .line 144
    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_5
    move v2, v3

    .line 149
    :goto_a
    return v2
.end method
