.class public final Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    new-instance v1, Ljava/io/File;

    .line 12
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "shared_prefs"

    .line 19
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    const-string/jumbo v2, "cec_config.xml"

    .line 25
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method
