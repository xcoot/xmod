.class public final Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "Received notification that uri "

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p2, " was modified; rescheduling keystore job"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string p2, "AdbDebuggingManager"

    .line 24
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 32
    return-void
.end method
