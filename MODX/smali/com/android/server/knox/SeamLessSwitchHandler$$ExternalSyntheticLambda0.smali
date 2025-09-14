.class public final synthetic Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/SeamLessSwitchHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 6
    iput p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 3
    iget p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 16
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    iget-object v1, v0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 24
    const v2, 0x1040e52

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    iget-object v0, v0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 37
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 57
    :cond_0
    return-void
.end method
