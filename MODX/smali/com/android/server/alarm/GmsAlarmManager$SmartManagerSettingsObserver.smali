.class public final Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    const-string p1, "GmsAlarmManager"

    .line 3
    const-string/jumbo v0, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    .line 14
    return-void
.end method
