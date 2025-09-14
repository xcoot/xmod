.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Ljava/util/Map;

    .line 10
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 16
    invoke-static {p0, p2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 22
    const-string p0, "BcRadioAidlSrv.module"

    .line 24
    const-string/jumbo p1, "onCurrentProgramInfoChanged: cannot send program info requiring higher target SDK version"

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
