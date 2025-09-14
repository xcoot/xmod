.class public final Lcom/android/server/vr/SettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field public final synthetic val$settingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    .line 14
    .line 15
    check-cast p0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/vr/EnabledComponentsObserver;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
