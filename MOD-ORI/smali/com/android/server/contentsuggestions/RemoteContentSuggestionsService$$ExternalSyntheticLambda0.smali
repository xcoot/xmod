.class public final synthetic Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 13
    .line 14
    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    .line 15
    .line 16
    invoke-interface {p1, v0, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/os/Bundle;

    .line 27
    .line 28
    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    .line 29
    .line 30
    invoke-interface {p1, v0, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/app/contentsuggestions/ClassificationsRequest;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 41
    .line 42
    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    .line 43
    .line 44
    invoke-interface {p1, v0, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
