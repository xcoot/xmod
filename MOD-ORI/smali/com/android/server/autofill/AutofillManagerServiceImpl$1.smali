.class public final Lcom/android/server/autofill/AutofillManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 2
    .line 3
    const-string p1, "AutofillManagerServiceImpl"

    .line 4
    .line 5
    const-string/jumbo v0, "remote augmented autofill service died"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 24
    .line 25
    return-void
.end method
