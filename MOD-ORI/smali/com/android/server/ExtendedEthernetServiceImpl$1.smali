.class public final Lcom/android/server/ExtendedEthernetServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/EthernetManager$TetheredInterfaceCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "TetheredInterfaceCallback onAvailable: "

    .line 2
    .line 3
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "ETHERNET_TETHERING_MODE"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string/jumbo v0, "on"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl$1$1;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, v2, p1}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    .line 1
    const-string p0, "ExtendedEthernetServiceImpl"

    .line 2
    .line 3
    const-string v0, "TetheredInterfaceCallback onUnavailable"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
