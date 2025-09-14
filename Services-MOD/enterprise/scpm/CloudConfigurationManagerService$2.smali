.class public final Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->mScpmToken:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 23
    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
