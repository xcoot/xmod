.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v1, "tethering"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/net/TetheringManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "adb_enabled"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq v1, v3, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->enableTethering()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    :goto_0
    const-string v0, "KnoxCustomManagerService"

    .line 52
    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    const-string/jumbo p0, "startUsbNet OK"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string/jumbo v1, "startUsbNet failed with error "

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method
