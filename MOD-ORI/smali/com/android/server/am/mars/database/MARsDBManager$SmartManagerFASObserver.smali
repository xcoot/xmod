.class public final Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 1
    :pswitch_0
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "onChange - mSmartManagerSettingsObserver!"

    const-string v0, "MARsDBManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void

    .line 4
    :pswitch_1
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "onChange - mSmartManagerFreezeExcludeListObserver!"

    const-string v0, "MARsDBManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    return-void

    .line 7
    :pswitch_2
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "onChange - mSmartManagerDefaultAllowedListObserver!"

    const-string v0, "MARsDBManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    return-void

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "onChange - mSmartManagerFASObserver! Uri = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MARsDBManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    const-string p1, "MARs-self"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 14
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 15
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mFASDBupdateRunnable:Lcom/android/server/am/mars/database/MARsDBHandler$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
