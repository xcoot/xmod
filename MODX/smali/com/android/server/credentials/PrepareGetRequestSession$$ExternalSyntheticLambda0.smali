.class public final synthetic Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Landroid/credentials/selection/ProviderData;

    .line 8
    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    check-cast p1, Landroid/credentials/selection/ProviderData;

    .line 13
    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    .line 15
    return-object p1

    .line 16
    :pswitch_1
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    .line 18
    iget-object p0, p1, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 20
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    .line 22
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_2
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    .line 29
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    .line 31
    return-object p1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
