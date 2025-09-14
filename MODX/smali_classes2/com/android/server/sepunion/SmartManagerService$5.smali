.class public final Lcom/android/server/sepunion/SmartManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$5;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_0

    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-ne p1, p2, :cond_1

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$5;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/sepunion/SmartManagerService;->-$$Nest$monPermissionChanged(Lcom/android/server/sepunion/SmartManagerService;I)V

    .line 10
    .line 11
    .line 12
    :cond_1
    return-void
.end method
