.class public final Lcom/android/server/ProfileService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ProfileService;


# direct methods
.method public constructor <init>(Lcom/android/server/ProfileService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/ProfileService;->initializeInterfaceOfService()V

    .line 6
    iget-object v0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    .line 8
    iget-object v0, v0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    .line 17
    iget-object v2, v2, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    .line 19
    const-string v3, " died; reconnecting"

    .line 21
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/ProfileService;->selectSuitableProfileService()V

    .line 29
    return-void
.end method
