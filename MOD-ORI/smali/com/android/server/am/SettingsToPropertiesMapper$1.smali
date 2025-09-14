.class public final Lcom/android/server/am/SettingsToPropertiesMapper$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

.field public final synthetic val$globalSetting:Ljava/lang/String;

.field public final synthetic val$propName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SettingsToPropertiesMapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
