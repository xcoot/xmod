.class public final Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public attachSoundPath:Ljava/lang/String;

.field public detachSoundPath:Ljava/lang/String;

.field public final mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "attach sound = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", detach sound = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
