.class public final synthetic Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(ZB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-byte p2, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    iget-byte p0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    .line 4
    .line 5
    check-cast p1, Landroid/debug/IAdbCallback;

    .line 6
    .line 7
    const-string v1, "Sending enable = "

    .line 8
    .line 9
    const-string v2, ", type = "

    .line 10
    .line 11
    const-string v3, " to "

    .line 12
    .line 13
    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "AdbService"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {p1, v0, p0}, Landroid/debug/IAdbCallback;->onDebuggingChanged(ZB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "Unable to send onDebuggingChanged:"

    .line 35
    .line 36
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
