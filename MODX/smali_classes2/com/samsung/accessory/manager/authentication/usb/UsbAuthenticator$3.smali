.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

.field public final synthetic val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "SAccessoryManager_UsbAuthenticator"

    .line 4
    .line 5
    const-string/jumbo v1, "onAuthenticationStarting"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 14
    .line 15
    iput-object p0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 16
    .line 17
    return-void
.end method
