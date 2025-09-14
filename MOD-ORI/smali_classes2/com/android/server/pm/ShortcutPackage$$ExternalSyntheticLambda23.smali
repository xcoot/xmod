.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    .line 13
    .line 14
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/util/Set;

    .line 46
    .line 47
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 50
    .line 51
    iget v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(ILjava/lang/String;)Landroid/util/ArraySet;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Landroid/content/pm/ShortcutInfo;

    .line 77
    .line 78
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v1, Landroid/app/appsearch/ReportUsageRequest$Builder;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-object v2, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v1, v2, p0}, Landroid/app/appsearch/ReportUsageRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/app/appsearch/ReportUsageRequest$Builder;->build()Landroid/app/appsearch/ReportUsageRequest;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 101
    .line 102
    const/4 v2, 0x4

    .line 103
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p0, v0, v1}, Landroid/app/appsearch/AppSearchSession;->reportUsage(Landroid/app/appsearch/ReportUsageRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Landroid/util/ArrayMap;

    .line 117
    .line 118
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget-object p0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    const-string/jumbo v0, "null activity detected."

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    invoke-direct {v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :goto_2
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
