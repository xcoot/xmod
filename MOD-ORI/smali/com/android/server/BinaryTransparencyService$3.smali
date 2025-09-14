.class public final Lcom/android/server/BinaryTransparencyService$3;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "A new APEX has been staged for update. There are currently "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Landroid/content/pm/ApexStagedEvent;->stagedApexModuleNames:[Ljava/lang/String;

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    const-string v1, " APEX(s) staged for update. Scheduling measurement..."

    .line 12
    .line 13
    const-string v2, "TransparencyService"

    .line 14
    .line 15
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
