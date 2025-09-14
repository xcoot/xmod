.class public final Lcom/android/server/ExtendedEthernetServiceImpl$3;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "eth_disabled"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    move v1, v0

    .line 21
    :cond_0
    const-string p1, "ETH_DISABLED is changed to "

    .line 22
    .line 23
    const-string v0, "ExtendedEthernetServiceImpl"

    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->setLinkDown()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
