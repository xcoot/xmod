.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget v0, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;->f$4:I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v6, "Starting app unarchival for: "

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "PackageArchiverService"

    .line 31
    .line 32
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    new-instance v7, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v6, "android.intent.action.UNARCHIVE_PACKAGE"

    .line 42
    .line 43
    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/high16 v6, 0x10000000

    .line 47
    .line 48
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string v6, "android.content.pm.extra.UNARCHIVE_ID"

    .line 52
    .line 53
    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string v0, "android.content.pm.extra.UNARCHIVE_PACKAGE_NAME"

    .line 57
    .line 58
    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    if-ne v5, v0, :cond_0

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 67
    :goto_0
    const-string v6, "android.content.pm.extra.UNARCHIVE_ALL_USERS"

    .line 68
    .line 69
    invoke-virtual {v7, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    if-ne v5, v0, :cond_1

    .line 76
    .line 77
    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_1
    move-object v8, v3

    .line 90
    iget-object v6, v1, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const v0, 0x1d4c0

    .line 97
    .line 98
    .line 99
    int-to-long v1, v0

    .line 100
    const-string v5, ""

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    const/16 v4, 0x148

    .line 104
    .line 105
    move-object v0, v9

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v10, -0x1

    .line 117
    const/4 v12, 0x0

    .line 118
    const/4 v15, 0x0

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
