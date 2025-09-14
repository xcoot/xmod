.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramSelector;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$0:Landroid/hardware/radio/ProgramSelector;

    .line 6
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$0:Landroid/hardware/radio/ProgramSelector;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z

    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 11
    const-string p0, "BcRadioAidlSrv.module"

    .line 13
    const-string/jumbo p1, "onTuneFailed: cannot send program selector requiring higher target SDK version"

    .line 16
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;->f$1:I

    .line 22
    invoke-interface {p1, p0, v0}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    .line 25
    :goto_0
    return-void
.end method
