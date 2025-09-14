.class public Lcom/android/server/wifi/SupplicantManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method public static start()V
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    .line 10
    const-string v1, "Failed to start Supplicant"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static stop()V
    .locals 3

    .line 1
    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "SupplicantManager"

    .line 10
    .line 11
    const-string v2, "Failed to stop Supplicant"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
