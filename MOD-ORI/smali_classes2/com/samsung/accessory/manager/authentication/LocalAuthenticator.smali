.class public abstract Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static convertMsg(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "MSG_SET_AUTH_HALL"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "MSG_AUTH_FORCE_UNVERIFY"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "MSG_AUTH_TIMEOUT"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "MSG_AUTH_STOP"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "MSG_AUTH_RESPONSE"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "MSG_AUTH_START"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "MSG_INITIALIZE"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract systemReady()V
.end method
