.class public final Lcom/android/server/location/injector/SystemAppOpsHelper$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 3
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
