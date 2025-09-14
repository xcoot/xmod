.class public final synthetic Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

.field public final synthetic f$1:Lcom/android/server/location/settings/LocationUserSettings;

.field public final synthetic f$2:Lcom/android/server/location/settings/LocationUserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 26
    .line 27
    iget v4, v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->mUserId:I

    .line 28
    .line 29
    invoke-interface {v3, v4, v1, p0}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
