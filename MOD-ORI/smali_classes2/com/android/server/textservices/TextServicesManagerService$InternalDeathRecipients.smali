.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
