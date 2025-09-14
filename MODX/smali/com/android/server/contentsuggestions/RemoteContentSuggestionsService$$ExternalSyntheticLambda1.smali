.class public final synthetic Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/HardwareBuffer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/HardwareBuffer;

    .line 8
    iput p3, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    .line 12
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    iget-object v1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/HardwareBuffer;

    .line 5
    iget v2, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    .line 9
    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    .line 11
    invoke-interface {p1, v0, v1, v2, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V

    .line 14
    return-void
.end method
