.class public final Lcom/android/server/compat/PlatformCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const/4 v5, 0x1

    .line 54
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 55
    .line 56
    invoke-virtual {v6, p1, v3, v4, v5}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    or-int/2addr v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method
