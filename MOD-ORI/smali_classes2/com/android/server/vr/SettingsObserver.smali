.class public final Lcom/android/server/vr/SettingsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentObserver:Lcom/android/server/vr/SettingsObserver$2;

.field public final mSettingsListeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/vr/SettingsObserver$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/vr/SettingsObserver$1;-><init>(Lcom/android/server/vr/SettingsObserver;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/vr/SettingsObserver$2;

    .line 17
    .line 18
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/vr/SettingsObserver$2;-><init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    const/4 p2, -0x1

    .line 27
    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
