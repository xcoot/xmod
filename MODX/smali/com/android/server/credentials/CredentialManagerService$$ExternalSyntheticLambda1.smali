.class public final synthetic Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/credentials/CredentialOption;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 11
    move-result-object p0

    .line 12
    const-string p1, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 27
    move-result-object p0

    .line 28
    const-string p1, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_1
    return p0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    :goto_2
    return p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
