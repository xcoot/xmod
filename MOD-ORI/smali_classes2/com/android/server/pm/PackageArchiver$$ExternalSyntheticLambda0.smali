.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v4, v1

    .line 11
    check-cast v4, Landroid/content/Intent;

    .line 12
    .line 13
    iget v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    .line 14
    .line 15
    iget-object p0, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const/4 v10, -0x1

    .line 30
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 51
    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-class v3, Landroid/content/pm/LauncherApps;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 63
    .line 64
    iput-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 65
    .line 66
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 67
    .line 68
    new-instance v2, Landroid/os/UserHandle;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 79
    .line 80
    iget v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/16 v2, 0x61

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/4 v0, 0x1

    .line 97
    if-ne p0, v0, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
