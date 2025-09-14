.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/IntentSender;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$4:Landroid/content/IntentSender;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$4:Landroid/content/IntentSender;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$5:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v3, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v5, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const v6, 0x1040f5e

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppLabel(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    const/high16 v1, 0x60000000

    .line 49
    .line 50
    iput v1, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    invoke-interface {v2, v4, v5, v6, p0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 65
    .line 66
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 67
    .line 68
    monitor-enter v5

    .line 69
    :try_start_0
    invoke-virtual {v2, v6, v3, p0}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 v5, -0x1

    .line 75
    if-eq v2, v5, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v8, v2, p0}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 88
    .line 89
    move v7, p0

    .line 90
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v8, v2, p0}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda14;

    .line 98
    .line 99
    invoke-direct {p0, v0, v2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageArchiver;I)V

    .line 100
    .line 101
    .line 102
    const v0, 0x1d4c0

    .line 103
    .line 104
    .line 105
    int-to-long v3, v0

    .line 106
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0
.end method
