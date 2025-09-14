.class public interface abstract Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 7
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 13
    instance-of v3, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 15
    if-eqz v3, :cond_1

    .line 17
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 19
    return-object v2

    .line 20
    :cond_1
    new-instance v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Proxy;

    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 27
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz v3, :cond_2

    .line 53
    return-object v2

    .line 54
    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract getProperties(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
.end method

.method public abstract loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
.end method

.method public abstract loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
.end method

.method public abstract startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I
.end method

.method public abstract stopRecognition(I)I
.end method

.method public abstract unloadSoundModel(I)I
.end method
