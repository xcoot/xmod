.class public final Lcom/android/server/enterprise/plm/impl/BindServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAliveEvent:I

.field public mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

.field public final mContext:Landroid/content/Context;

.field public mDeathEvent:I

.field public mObserver:Landroid/os/Handler;

.field public final mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Landroid/os/Handler;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    .line 20
    .line 21
    invoke-direct {v4, p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;-><init>(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 30
    .line 31
    return-object p0
.end method

.method public final hasPackage(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "Utils"

    .line 4
    .line 5
    const-string/jumbo v1, "found package "

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " "

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne p0, v1, :cond_0

    .line 37
    .line 38
    const-string/jumbo p0, "enabled"

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string/jumbo p0, "disabled"

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    const-string/jumbo p0, "failed to find package "

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return v2
.end method

.method public final setPackageEnabled(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "Utils"

    .line 4
    .line 5
    const-string/jumbo v1, "set package "

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x2

    .line 17
    :goto_0
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eq v3, v2, :cond_2

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const-string p2, " enabled"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string p2, " disabled"

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_3
    return-void
.end method

.method public final start()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "Utils"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    array-length v2, v0

    .line 35
    move v6, v5

    .line 36
    :goto_0
    if-ge v6, v2, :cond_2

    .line 37
    .line 38
    aget-object v7, v0, v6

    .line 39
    .line 40
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v6, "found service "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, " "

    .line 67
    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const-string/jumbo v6, "enabled"

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    const-string/jumbo v6, "disabled"

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_2
    const-string/jumbo v0, "failed to find service "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move v0, v5

    .line 114
    :goto_3
    if-nez v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string/jumbo v0, "failed to find "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string v0, "BindServiceImpl"

    .line 128
    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return v5

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v1, 0x1

    .line 143
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return v1
.end method
