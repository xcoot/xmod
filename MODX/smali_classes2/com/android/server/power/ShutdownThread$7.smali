.class public final Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;Lcom/android/server/power/ShutdownThread$6;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "ShutdownThread"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v2, "recovery"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/RecoverySystem;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v2, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v5, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    .line 37
    .line 38
    invoke-static {v4, v5, v3}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "!@uncrypt finished. No need to retry uncrypt"

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "!@Error uncrypting file : "

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    aput-boolean v0, p0, v2

    .line 76
    .line 77
    return-void
.end method
