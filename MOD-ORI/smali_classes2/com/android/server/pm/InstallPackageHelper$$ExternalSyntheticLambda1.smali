.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:I

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;[ILjava/lang/String;II)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/content/IntentSender;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1, v0, p0}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, [I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:I

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    array-length v3, v1

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_1

    .line 46
    .line 47
    aget v5, v1, v4

    .line 48
    .line 49
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-class v7, Landroid/app/AppOpsManager;

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Landroid/app/AppOpsManager;

    .line 60
    .line 61
    invoke-static {v5, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/16 v7, 0x77

    .line 66
    .line 67
    const/4 v8, 0x2

    .line 68
    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, [I

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 82
    .line 83
    iget p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:I

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    array-length v3, v1

    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_1
    if-ge v4, v3, :cond_2

    .line 91
    .line 92
    aget v5, v1, v4

    .line 93
    .line 94
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 95
    .line 96
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const-class v7, Landroid/app/AppOpsManager;

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroid/app/AppOpsManager;

    .line 105
    .line 106
    invoke-static {v5, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const/16 v7, 0x77

    .line 111
    .line 112
    const/4 v8, 0x3

    .line 113
    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
