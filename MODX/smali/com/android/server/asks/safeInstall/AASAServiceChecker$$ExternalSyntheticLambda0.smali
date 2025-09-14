.class public final synthetic Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/asks/safeInstall/AASAServiceChecker;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/asks/safeInstall/AASAServiceChecker;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/asks/safeInstall/AASAServiceChecker;

    .line 6
    iput-object p2, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 8
    iput-object p3, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 10
    iput-object p4, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/asks/safeInstall/AASAServiceChecker;

    .line 3
    iget-object v1, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 5
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iget-object p0, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string/jumbo v3, "result"

    .line 15
    const-string v4, "AASAService result : "

    .line 17
    const-string v5, "AASAService provider call Start"

    .line 19
    const-string v6, "PackageInformation_AASAService"

    .line 21
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :try_start_0
    iget-object v0, v0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v5, "content://com.samsung.aasaservice.safeInstall.SafeInstallProvider"

    .line 33
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v5

    .line 37
    const-string/jumbo v7, "getSafeInstallResult"

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-virtual {v0, v5, v7, v8, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string p0, "AASAService bundle is null"

    .line 81
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 85
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "AASAService provider call authority error: "

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 109
    :goto_1
    return-void
.end method
