.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Landroid/content/pm/PackageInstaller$SessionParams;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

.field public final synthetic f$5:Landroid/content/IntentSender;

.field public final synthetic f$6:Landroid/content/pm/ArchivedPackageParcel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$5:Landroid/content/IntentSender;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$6:Landroid/content/pm/ArchivedPackageParcel;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget v5, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 12
    .line 13
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$5:Landroid/content/IntentSender;

    .line 14
    .line 15
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$6:Landroid/content/pm/ArchivedPackageParcel;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v0, v6

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    const-string v13, "base"

    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    const-wide/16 v14, 0x0

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    move-object v11, v10

    .line 47
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v10, v8, v0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "PackageInstaller"

    .line 55
    .line 56
    const-string v1, "Installed archived app %s."

    .line 57
    .line 58
    iget-object v2, v9, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    if-eqz v10, :cond_0

    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    .line 86
    .line 87
    .line 88
    :cond_0
    throw v0
.end method
