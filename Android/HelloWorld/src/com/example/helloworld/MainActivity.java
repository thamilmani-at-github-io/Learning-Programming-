package com.example.helloworld;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MainActivity extends Activity {
    private LinearLayout layout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        layout = (LinearLayout) findViewById(R.id.lay);  // Reference to the LinearLayout

        // Loop to add 50 TextViews
        for (int i = 0; i < 50; i++) {
            TextView txt = new TextView(this);
            txt.setText("Number: " + i);
            txt.setTextSize(18);
            txt.setPadding(8, 8, 8, 8);

            layout.addView(txt);
        }
    }
}
