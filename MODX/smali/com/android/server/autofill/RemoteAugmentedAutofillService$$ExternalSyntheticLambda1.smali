.class public final synthetic Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    .line 3
    sget p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 5
    invoke-interface {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V

    .line 8
    return-void
.end method
