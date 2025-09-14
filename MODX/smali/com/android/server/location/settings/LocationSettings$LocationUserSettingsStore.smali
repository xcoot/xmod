.class public final Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
.super Lcom/android/server/location/settings/SettingsStore;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/location/settings/LocationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/location/settings/LocationSettings;ILjava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    .line 3
    invoke-direct {p0, p3}, Lcom/android/server/location/settings/SettingsStore;-><init>(Ljava/io/File;)V

    .line 6
    iput p2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->mUserId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    .line 7
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "android.hardware.type.automotive"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 21
    iget-boolean p0, p1, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 23
    if-nez p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/android/server/location/settings/LocationUserSettings;

    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;-><init>(Z)V

    .line 32
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 12
    const p1, 0x111012c

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    check-cast p2, Ljava/io/DataInputStream;

    .line 22
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 25
    move-result p1

    .line 26
    :goto_0
    new-instance p2, Lcom/android/server/location/settings/LocationUserSettings;

    .line 28
    invoke-direct {p2, p1}, Lcom/android/server/location/settings/LocationUserSettings;-><init>(Z)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
