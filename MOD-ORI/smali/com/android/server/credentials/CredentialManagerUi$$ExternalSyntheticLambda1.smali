.class public final synthetic Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/credentials/CredentialProviderInfo;

    .line 2
    .line 3
    new-instance p0, Landroid/credentials/selection/DisabledProviderData;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Landroid/credentials/selection/DisabledProviderData;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method
