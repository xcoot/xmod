.class public final synthetic Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ICancellationSignal;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;->f$0:Landroid/os/ICancellationSignal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;->f$0:Landroid/os/ICancellationSignal;

    .line 2
    .line 3
    sget v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string v0, "RemoteAugmentedAutofillService"

    .line 11
    .line 12
    const-string v1, "Error requesting a cancellation"

    .line 13
    .line 14
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
