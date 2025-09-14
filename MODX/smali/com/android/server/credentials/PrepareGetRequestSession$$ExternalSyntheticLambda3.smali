.class public final synthetic Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Landroid/credentials/selection/GetCredentialProviderData;->getRemoteEntry()Landroid/credentials/selection/Entry;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0

    .line 18
    :pswitch_0
    invoke-virtual {p1}, Landroid/credentials/selection/GetCredentialProviderData;->getAuthenticationEntries()Ljava/util/List;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result p0

    .line 26
    xor-int/lit8 p0, p0, 0x1

    .line 28
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
